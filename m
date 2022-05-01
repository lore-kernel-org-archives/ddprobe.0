Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6EB92F3C
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 23:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651447138;
	h=To:Subject:From:Message-Id:Date;
	bh=uieDGHa8uW98qLYSPl4ijXR92nkNy67mbOU9DD1SgB8=;
	b=a5HtnatK583PAKLZb2ZmqnBXP5Z3RdtNfPFX4qZL0nMpzwm4VN88k41Xs0avVS36
	SZep3+LO+9Cv6cS6tiAmF29E7xhkNrTKYd1ITAAp6nLPu+Ter7meOVbPE7dfgsfNAQZ
	+bAg42ScBDelf5UubDb7m9ibmWK8wWmYCwN6Vuv0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651447138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uieDGHa8uW98qLYSPl4ijXR92nkNy67mbOU9DD1SgB8=;
	b=YDOQwhcx9qpSJg565hGob5hAcy0PcDkXL/RMZmPS8FYdmPH99GOOhVE0f1URG30+
	TCXTItqt7b09pWHoywAbQnCDqHfII2tts1fnhef0+1R+OjyUIqFfL/WUl5z+BQ/zkMD
	CbxFU9+U28CiWZ4B6eaXqjyck3XosShuz4mKTfDk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018081eb881c-3f83eb74-07bc-4bd2-92e6-86beb2d23c86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ebec2d8dfb176d55bc92a97368c5be4a11a08f8b961c4df1f18ccf95ecdae5bf
Date: Sun, 1 May 2022 23:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651447138
