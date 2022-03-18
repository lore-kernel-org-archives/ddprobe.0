Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 759C84C60
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647608785;
	h=To:Subject:From:Message-Id:Date;
	bh=UkpG8kL1U3ectScmK+TyfcuH2SnPOrV7pHvGCBm3i4c=;
	b=ODTbm8v0QP6lIoawzF/JmqatGT6hlg8i8nMBA/zDZKWWJLwToLfRhiffn0SS4kco
	dJmmFLgrmMQkfeYJH/Dcd7BAF+QbuS1zV+v60MPWpzUuFMkJzEEfNq04HQeCPmcbqDX
	sHopwj+flpPO1rIcSzORv5le5HaiUt9jx6pd0wD0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647608785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UkpG8kL1U3ectScmK+TyfcuH2SnPOrV7pHvGCBm3i4c=;
	b=jwum6DWTH5r90qsrCX4DEaQnDYjUi/PTJU6cf7XAyaDi0LdeEr0Z4fRify6UuK8U
	oWqs5AHvdOct+qwVz+QkLsxfsiN394kXKi3i3H+x6OMelWQAZDwa2NonGrVHd3kEABC
	/U88wgpkoev5bcmOydnEyCondy/He2Dhyz4ltR30=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d22e766-6bbfcaa0-7569-4646-a206-46d9eb8aa5ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa0c213fbd372f0cd9a4f173911446ce5c93d7521b923e694032a101d39ae276
Date: Fri, 18 Mar 2022 13:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647608784
