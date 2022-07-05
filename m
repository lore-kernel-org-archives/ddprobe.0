Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE95182
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 00:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656982012;
	h=To:Subject:From:Message-Id:Date;
	bh=rVPu6WNH42o/jEKuzRY+JW50Tk5WSos91oOMEGDzfdk=;
	b=J5GvAErh0yRihfmDauaD+DlxSKy3VHPAsxlsLIpuh/LT3jQ4ht0xT9vqrX6qPCA2
	d5Y3x6Y9Bn6VHvafsCQ3JVfSV7HLjb1tqE/4okPGa2Ui8JOx16Wce/iLXivI9m2d3WA
	EGXLtlpPxb3eUV3a43O/2+Tl3bKxYesDa9vOwzgc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656982012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rVPu6WNH42o/jEKuzRY+JW50Tk5WSos91oOMEGDzfdk=;
	b=AlqbF9WUcvOUzmcB/2kC6fmX1z0VItZHSUzZj4XtvtpPlyg+6Weu6R/Xrn+ltFXJ
	jofxukLbgoBEYmEmfuDbeJFB8DLUnYVPCk6oyX6YyS466vZzLH1dEhCy2WHHWVvKug5
	stwI/MFzzjahRoJPMbU0RyX1/pqkmCOBBLzZ73I0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cbd301bd-2eff6061-52f6-424d-842f-0fe46dd80de4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 265049f1799672b905cec9a0054ede7b3aa618d71eadfc399ba100675ab02e78
Date: Tue, 5 Jul 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656982012
