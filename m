Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61700360
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660999252;
	h=To:Subject:From:Message-Id:Date;
	bh=SPfK0wMJNcHSRPeaZkPBTR8vR5S3TOVicTIsHdVPX70=;
	b=fS5nbo1YQRoG8yfNyPBse/65Vo46YCXE5pM4FB0KuyRX/csrzxxS3OD+dZ7vMqrZ
	e7UeZcd00fx5HiUB0Wolwe/xzX/3DoSY1ZSBRzDmTVtp3qQ/oXCFRkw4LaAyHtJEgrm
	lEvfGVtjk+rb6ZRnLz/ZfhAxh0p/llwRZvdT+gWw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660999252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SPfK0wMJNcHSRPeaZkPBTR8vR5S3TOVicTIsHdVPX70=;
	b=iX5LWUOou30rrccZcNYdOx5h5DKyuYCsiozFB/cJkQ/AesgYY4AGl5w4Ppd3A6dl
	ePVw1dOQS/wbvW4fJWoUnvS6DCm2rBxFgzfltve0KnFwIH5IssbHS4xj/OSxpKT2eTJ
	vimP50v8hvAPyzgMzRyGIHfM1rEj8OyZHoMy1stk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bb453a6f-f1e972bf-eef8-4ad2-a7c0-e80ace501ca9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9ad241e7702c4250d16e94044bedbc80b834c53d5b0395d2de8cbd89967a345
Date: Sat, 20 Aug 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660999252
