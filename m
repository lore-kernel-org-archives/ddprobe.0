Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4457B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 00:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655512499;
	h=To:Subject:From:Message-Id:Date;
	bh=GK4gedcLTM9AfUCOLrG8XJIv3x6yoPPMh5AR8d1cOS8=;
	b=do+/UTXfjXYcHoHNawbWHrFEIiIF2Ezh5Vkk59EYkydWprD8dP08rR2hRfcoyAgv
	OxSsheE+RRRlKJciWs1bhn3NT8+8oIjPs/m0XmmGA0zW4sAGPJdksDZ39MWZ/zQoNyz
	kK43l9Y/QI761EI3dOGPb+vxlm1TzKN5k1Sb6c1c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655512499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GK4gedcLTM9AfUCOLrG8XJIv3x6yoPPMh5AR8d1cOS8=;
	b=Fe3nGiXn4/OLqS9/fzdfNg4A3Ux768XbsVXuAiCQkbZhjeJ2RHmPB+rADnpINxFR
	oSYv65UXphyC1sM6D/znNUy2GYjxb9hg2d9/dKFJ3taxCSbPn92ADhRzbt1/+9gGlSg
	XS0vqEBwcI5L/ZbwI7cf8yBeV/gm4HVWt20Fprp8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181743c0411-a83cdc3f-f8cb-4a3b-aea5-2b423a76f2b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5021804bfbef4b24a81d09303ced8fa5102ed74279d09f32452efa579bdc0363
Date: Sat, 18 Jun 2022 00:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655512499
