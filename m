Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149A217E
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 10:35:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653215759;
	h=To:Subject:From:Message-Id:Date;
	bh=cO75ufRloRGG0FAJYltpazfA0RiRnYydzVSwWcvZjrw=;
	b=jNE5Tl9/KfJo5ppJqCJWnmB1jWmOuwtcyoEP/efQCz5FId5BJ4Wbb5dvRJYqnFpA
	0NeA1P2JF5RpnE7M3xkIG6WkYNlLrR0uI6Kev25Hh3KHsye2ECWDdjObFcKyaR/1Pgf
	wfib0/ZVSAe/d4Tn2EOzA0J6GYCqin3TtzF41hzo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653215759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cO75ufRloRGG0FAJYltpazfA0RiRnYydzVSwWcvZjrw=;
	b=eaj9YAIJV0S4NlIdBeLpzmKIqpvc1dG02i7/EO6zS9WqMwg2ywxeSlD2382hDlC7
	JalyWFx+BDZO/LCMKTq/5GUGAMh9YDk1sHDTfcGCHaY04vsOfmfaFcnRrmdwEa8n4+8
	0Uqx8AC2GPfys4/0rMss1y+fH8+eL+v/u67/0Agc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eb568bbc-d04fb38b-fefb-4f16-a6a7-dbe3380ee002-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80997349ea7412613f617d925215c6aff87156a5b00671dc7141e47c1fd72e43
Date: Sun, 22 May 2022 10:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653215759
