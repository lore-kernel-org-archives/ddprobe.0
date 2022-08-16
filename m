Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB8F1851
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660615852;
	h=To:Subject:From:Message-Id:Date;
	bh=u87gjJdLFJtN6IPvPPKuM+Es968RlJaYNsOA80bJQ4c=;
	b=dB/ye2InluPxmVlOcGmklCrYljkrxybV2nvVgMAFcjBnW6mYIzQ//HuYgvguWcOC
	bzxbaeXEa9B3+vjMaKFwqfoqDz63vNu2oBpL7saBMRyxl+2igOEDBWe15WAS8DAsPjt
	f0kfdcMkYjy/oyPNZgFPpDl97ecR+TQ/3lV7tpWY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660615852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u87gjJdLFJtN6IPvPPKuM+Es968RlJaYNsOA80bJQ4c=;
	b=kYoabHYSuCW1vbd+IJknPQX8AVnghkKzkQ3zlFkMMgK5cty6TMtlaeQd4YVzqCLh
	l36id//xw3qYLhGn8Mx8RJESLPXNoV/JSBOxgcIVYGlaZW4l9Lnjko4mRnR193Yf+cC
	VXnoQ/V88sVdjsij3WHbwNBbRNyn00Hd1zoIOHac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a46b0200-6d4f115b-9dfa-4f0a-8391-cf594e537940-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: edf65983d947d5a4f9368fdfe14f49451e849af2c1b31a0c040633d9a13f4fee
Date: Tue, 16 Aug 2022 02:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660615852
