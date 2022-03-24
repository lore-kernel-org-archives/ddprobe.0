Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0CF7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 11:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648121278;
	h=To:Subject:From:Message-Id:Date;
	bh=bu5fcBRloJOfxJtqHL4edGNoxxlZyv58z2d/c78YzyE=;
	b=SRjfaotdG5z1/6hRb6ehGjhHM4XLhf/KmLcTbcLoUEQebzF22LIPb55+wGZzC4Yk
	BPwUspl3Oao+QsMljGAJtWV5b9/nOLQHX36cVUHbMkd/UIe8B2anIzpqjLA8RkfV0y7
	JubJrMa7jXpSlJkPj/uLNGhr29J/LWSR4w1FQYa8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648121278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bu5fcBRloJOfxJtqHL4edGNoxxlZyv58z2d/c78YzyE=;
	b=BkfJG8vus2QtlYaR7VEJ8/whybpVnCJBDtmmANbcWGij8YVZhxOacNLiu4ZHFAZC
	/3MKdT8IQ43KkdzORQUnjKSezpE3ggxHHvd41RbKGh5Y18/WS29sJ3UVNJFFQVIeYqS
	Cj4p445veprtJnHDqj++SRrRhqj3zcwGwBw5qesA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbbaeef3f-107d225b-f31f-4adc-846f-c076c77920eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd7b1aee602a76a73c1678bd444130904f2419e2a55d67b33dba754aa168aad0
Date: Thu, 24 Mar 2022 11:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648121278
