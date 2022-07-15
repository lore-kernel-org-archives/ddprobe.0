Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A0E20E0
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 07:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657869412;
	h=To:Subject:From:Message-Id:Date;
	bh=mCHS4pLLJ2kKdbDoTRLPRAzV8hL+4AQoZQr2Eqi1M1c=;
	b=QjIkjNDBP3D+Um4LAePgG6iTLqHh5QCVSFwdsaJ9OSqcueX+8yeOeAV5A+8V7nXT
	25fQyBYRW2hLkJPVoPcUstO1KFgqRqiftQS64zfI3PDtRiUhlSaK+10CAdKD+s/IQ11
	GCRrlhO8+ZPNXQau7ScKmFiLfPFA8pp7Xl/TMROc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657869412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mCHS4pLLJ2kKdbDoTRLPRAzV8hL+4AQoZQr2Eqi1M1c=;
	b=CRmdmnmyyBfIGJ83KTJSLPqrvqFy5+0/ucpuNTHQx5EduccGrKad1vH3NOKHJl0p
	uKZcI0pLQMgPBrNhcHZbGiZMSHhnc0TMrgtYy34IvO5/NXl7k14ZPkqSNrI66/umykX
	kFq+z7VQm8uCfGdSG73A523BAtgUWtbff2R1GY9w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018200b7a79c-29ed3961-bc1b-49be-b356-5ceeed64f6c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 134de81cc9981a30d6d694103159b147cd206d995908723e6d83ca5a2f81d62a
Date: Fri, 15 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657869412
