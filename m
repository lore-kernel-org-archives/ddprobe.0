Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F6B6D19
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 15:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656602812;
	h=To:Subject:From:Message-Id:Date;
	bh=KucIIcCwmccMmYCmMg+r526k5NKti97aXrtN3Yf2AFc=;
	b=GOHQ6SiPbyXFAdgPHMkevmtzob6FL6zOA3KeXcDhMFWNR8HB4xF2WWi58lwYtvc0
	yenpe+P1YLU9Voen4FyyACGSbAHc4WuwCl9vVaJnCCrx47Fj8eG/kA9NXw1lEV3BZuS
	l2/TUfu3ZdwFQd2sP6P+zeakK6cr+g1/N4umpWcg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656602812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KucIIcCwmccMmYCmMg+r526k5NKti97aXrtN3Yf2AFc=;
	b=MgM6G1RsfzIhSVu2LOWTBWx5AxglCy/yR6r4b2oHfJCDryZojdv3k1Xk31BbgZaT
	W0CdGau4xwXW2f1x3ikRaYEqIn3aBw2Tth0BieMuF1MotP442L3UsMGgBoFPsayKCsU
	kk7oAtgyg19ZBfgCpZ8hm3db3IFRBaGaEKf3Dl4M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b538df9b-297d8d4a-0ea4-49ef-8377-8600f2570bee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cdbc8415438776d2625f0ecd6a434af1ce9edf27e9c9e862493a50f12d62ef3
Date: Thu, 30 Jun 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656602812
