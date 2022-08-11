Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89F164A15
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 19:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660245652;
	h=To:Subject:From:Message-Id:Date;
	bh=Zd1uTnnooAyiyBnsyAyrL3xqMk3pa0yXE6YCMGZrvM4=;
	b=egsxCOyuHKrVMs0YCYl0RmrKfxmDkDSOdBzFoHXIqRnGMiH2B8+VFtnnTvIjwrVn
	612HYILIaF91+ess/q6JueGy5fSAKNaqNvjZMZA7f7a5HFMz2n8nCEW+jqQflj3OhsJ
	1re4CpSfm3GY9eNgnCKd5PwTp7ChqLx+uo+ktByM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660245652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zd1uTnnooAyiyBnsyAyrL3xqMk3pa0yXE6YCMGZrvM4=;
	b=LOVhfRvNhxZ1ePZb0G3l6qCzf53bXLqj6cVwcAzoWLMViRnS9FGv4ZxEdrbRwcX7
	Hy0UfG8+1MA44l8Xkv1HOjt6+G1Gbh/lPj6wknYoTOrnvrj0WAFM9jt0oLtcdQQprMn
	OkVh8AUbjlxJJgiVak097lmW4uOWKNQYyh2Sv2YE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828e5a3459-3dc4e5e1-701a-41b2-b555-1b75a4e163b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a68edbaf17a364f92f247098cdd71a04e0b9605f038159e241a5b68bc726b0fe
Date: Thu, 11 Aug 2022 19:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660245652
