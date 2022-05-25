Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CC01392
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 21:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653514139;
	h=To:Subject:From:Message-Id:Date;
	bh=joE8WDwXzNuiaJbVweK+ApbaKKkFUhHNi1F1WcIIN2c=;
	b=Y517+sHbs+/BpXg5vTjYfnVEkGsGu+/SJnePpDTkzDTHpg6XWXv4ydKrk2SRIBax
	Tp4rXZMNa3IG5dTiIWVd7AELEuWzlihBReLEtQ+oDCMfzCD+5p5MVFfDmf16RYH+N/k
	YUPpaeQmBfVKeuMR5xl4aIzaGjiqNzvsG9BaTLnY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653514139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=joE8WDwXzNuiaJbVweK+ApbaKKkFUhHNi1F1WcIIN2c=;
	b=ICzA8y0DzUWJuUT3fsKos8BERSOEIaCjLttIFRqzntOPOeByDzOZabJkIjpHVNgC
	hf4fV64l3Of/TNj2Ewg57D7PF0NxC5nW/1XhQpjwepmP52GzLuuEmfrbzHsHcJwoAgp
	q2p6kh9WBM2RXaI3BgmMhJg0cfNF2vf/Bj9jOMvg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fd1f76a8-d6f817c8-46a0-4c07-ab5d-be9da5adf14a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eaabdd880e8eb6f3c06e50243732fc73a8baef5d3cb50cfd1bd33ab6cfdba1f5
Date: Wed, 25 May 2022 21:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653514139
