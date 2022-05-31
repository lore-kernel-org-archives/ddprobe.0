Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B37E33F0
	for <ddprobe@lists.linux.dev>; Tue, 31 May 2022 18:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654022759;
	h=To:Subject:From:Message-Id:Date;
	bh=LGF/iFa97OEFt5uAA0F1mgyCHUF7gX+HFOACcn92CMY=;
	b=i0nxiTgA+iPVOrNfmkeABLHGeaWnVe1XefAKNCAKPw2zmGfRk5byJgCNDXfonURK
	hQPjHkkKh3e67bgbc9xaHOoFJTaz8AzpNQEynApNmtBEYNtZOGV2NEHYNbz1U5/+J47
	AzPrM5ylxnl+azjJwM2sNV7hFsQOx75XjgGKkdzk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654022759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LGF/iFa97OEFt5uAA0F1mgyCHUF7gX+HFOACcn92CMY=;
	b=Tv9dqGJD/g8AggaQrvRhyxkI8QgbZnWOcSi2Pev2hGw5E9C701nAv/rN+W7xzz7N
	E3zh8H/6dQ/afMyLIcGO5gCfW/t3Dq3z7PyEeBXtOKelXaJ+HQJALTj2xNOYKZSC9ar
	uzEBq3cU3PbOAc9rnwLLMBkaWSB+nR9lrEOyeOm8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811b70635a-ad081e1f-0a4b-4183-adf3-11c5fc0a8471-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ded1ec487b29ece7558e642ae682a65a7b1d08cb4f6cb9951504693e10c269f0
Date: Tue, 31 May 2022 18:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654022759
