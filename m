Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 919AC5395
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 23:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647732384;
	h=To:Subject:From:Message-Id:Date;
	bh=YbBVaAK2WiTqCIdvllfk2JdP/XzdkN84Bnu2WLr1kzI=;
	b=kNV5fUfd0GMg1pXiQq0ul7W1v3A/YaKBz4rD0UFBMsc7ntzBHB0jXM2B9vSsl+vA
	GfFIfM/xOYYJ24zO25oLKZBbcvPBXtmxSVY2eg1fhVBV9k2sFdWdEU6pPimj+q1Q2QS
	dlm9+OCFopgjyuavg592GEyRFebxPeJvg434G4DY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647732384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YbBVaAK2WiTqCIdvllfk2JdP/XzdkN84Bnu2WLr1kzI=;
	b=a4u+UhtRAwXvzuETwTRnMXHCz7PrwLDXqZgwITwVH+bNNO+j0418SFD88WDJp4GL
	P2QqsE+wyrjqP3+QOjg7BL3w/y53wQZ0yU2cWZp79Kect/Mu2F083WT8PF08zzK05jE
	qjZZZw1j4lrdolywCIWlAi5YIKU522c+x93syVnY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa480e3de-943a2417-3223-4304-b246-d07754e107f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 823b9cfb796f766dec509c622f8209dc0454f1e87f723237b4bd49a481a04e8d
Date: Sat, 19 Mar 2022 23:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647732384
