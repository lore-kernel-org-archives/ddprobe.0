Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE92A31
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 17:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649525998;
	h=To:Subject:From:Message-Id:Date;
	bh=3UDCTaEs/nMRI7wKfX6aoZeQveeLoTbKO7YejFFpeTM=;
	b=P0vo8uFZvckpsnrk+N92fQYtyPGPBlptsjIMcjNzObh0PCdg3fzu7+Cn8BHRH55S
	xdDGCeSYFfLAmrHIXJbfOGj9usOz8vTY6+q5ySVv0T218MpkSWIXewiwiOzUcLt/H2v
	YZ9E7G/QYYMx2dPIV3ZmXDQz5S8TqQhAVKo7AaqQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649525998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3UDCTaEs/nMRI7wKfX6aoZeQveeLoTbKO7YejFFpeTM=;
	b=H4n8P/wgHDfblZP/stKUUfLhunEPE5T9j/PdwSSrCNYSkn2S3czrEgVStKSvIWWY
	c2uNFFZVt9x+G25q5uLzH1K7/CACHwxjgOHXrM8iOmmzLDwQIsQQrSHRlrb4cqZV4FI
	T4ha5cMKYsa5FzZp1Vu4YeQ/t9Kkqcg4E5d9p3+Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800f6942cd-347a3464-2a68-41ad-843b-9c7e24c325f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c1bcb25212c8c0a7b070d167216d06a6438cce29d0669356030bf43d492bfef
Date: Sat, 9 Apr 2022 17:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649525998
