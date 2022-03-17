Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B5D2F36
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 02:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647483685;
	h=To:Subject:From:Message-Id:Date;
	bh=mK79E6t58R86HamAg6sY6xWvW0rg+N1G/JOuE+tLMrY=;
	b=Ljtgg7oKU2bcQ+pxpsM8wsxg0ZynrQb6CqXks3DJMAYj5YuY9/3+dM3req+cx6pS
	i7AfDqP1+kwg1vUMQqsHHHRvGRK7Jc4asACqjNzuh885Sg6sxCrb+WhnR6rFvYERL1m
	rqOuqyDWRwXLWWt6QPYwzNRXaaBM4HpKksJI4tTw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647483685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mK79E6t58R86HamAg6sY6xWvW0rg+N1G/JOuE+tLMrY=;
	b=I4yodHQvbaXvAhaD3Y7klxnWYWzP1fRC6bvIS9G3KClBJyVVkMSMdEGE3LOY16YI
	GWlz33NcqH2/ROhyQ6SxeGWriIHzjgwYd22yhsalDyENlDoSgOaxgor7SKys6DRH70U
	jznMCuPzPjVdKwaOZ4Uw2MtGrDTcfPC/KAaY4/7I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f95ae07b0-1cc97e10-c0d6-4b47-be95-e1ce9426d7ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 041dc003e4ab7ec751ca3a241c41ac7180970ad2ec9f8b1e64a22343e4d59f77
Date: Thu, 17 Mar 2022 02:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647483684
