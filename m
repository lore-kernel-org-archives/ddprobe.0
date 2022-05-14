Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88B7F36D
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 01:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652493119;
	h=To:Subject:From:Message-Id:Date;
	bh=J1/POb7Iyuf845OZQzL+fxWcSp+KuhYs4Pfnc6Npy3U=;
	b=W2xFtmJ2OppN6VyqZ8EpQsKTMbpKjwTjPrhRc/5kHW98LTLPKCL11bUHh+vwZ8wi
	GyQFh57RE+Ms75cof/fjMaczTOG3Z2RMxTNeRxadWZ/3QRDsPH3aRdQ6GgnehbB41+r
	CAp/qCQnTEdseD0LfOd5RNAivw+83RAYEeub9E3Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652493119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J1/POb7Iyuf845OZQzL+fxWcSp+KuhYs4Pfnc6Npy3U=;
	b=QNmNSDgMdtFDaRCwAtAjShG9+vStWfseGwgUWPHY7MNHVJpqj3LHj4eALz/h75lM
	VAHbAEg4Im40k3BDtxleBTuiZJuoCGD6B1iqmit5fVGN6/NIpteBNlkuhdr8xI0Fu//
	M44kvDNW1TgMorvxnO/+reysdl67l4hJb1OaQJjg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c043ef1e-714a629e-3791-48ba-a38b-ae375c7ffb58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfb7ecb93be1ed10994c3dad6a18c5cc7b87993eb66297887acd97cf04dea6c9
Date: Sat, 14 May 2022 01:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652493119
