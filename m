Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E587A3234
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658956852;
	h=To:Subject:From:Message-Id:Date;
	bh=Gv/SNm0g33I6oD8kdIFWN6o+AiV50m82XVCOtlFsNXw=;
	b=A2uACP4VbaJXlwbIhuERiKjz53JRSxRcd3UwTEns512xgWyWRuUiBNpCkS7+tTu3
	hl5kxQ41BYTGBkszwrlO/AiDENsqvZ0tPVrbi3Au+Fn/4/spUlnkkjPfntaK74kGWM7
	6lDjOzbwBWcTtSy4nF26BLhSfMm4UaA1J/9t/A1w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658956852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gv/SNm0g33I6oD8kdIFWN6o+AiV50m82XVCOtlFsNXw=;
	b=LCdw/AHwGZpW2BiWsaOK5QK0VM6GcGDRNmN04wlGrX2M9Cd/symUUqUeaRrPGnOx
	cg2gYN3Je9ltQAnOn5J9vYZqQwc/xAa7xJKkqGRzH19yUhmQPXjsIprfE7IwUhGOc8r
	6j3heBF5KrF0yiB3ItBIFN4DbSU2MDW5PV1dvxxc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824188ad6b-b3fa6596-1207-4ada-ba0d-bcc1d03ea95a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b950f5131ce10f960055cda1e531714dd0450ebf0044391efbd4772ed2adf853
Date: Wed, 27 Jul 2022 21:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658956852
