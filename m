Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C372F22
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659106852;
	h=To:Subject:From:Message-Id:Date;
	bh=3SoT0GvwJAPDqSoCNV6Kj98Vi0ZZrKPJxUfI45IqwPY=;
	b=Trio0XOuv5bWy0EOjKHEpYG4KKi+2Tz/SzA7tJPwZS5uzQQa00CGnay1tMku4w1O
	vLDEU0X16lhnDB7vgNs3ZWzV7mtM8EMh57S5890NDvaq3ubpHM/03fj+cQqn1QoEgwB
	jN8uFQGR01n9iXcH+26HQ9YIcJcjfKm7l5SWeWXk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659106852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3SoT0GvwJAPDqSoCNV6Kj98Vi0ZZrKPJxUfI45IqwPY=;
	b=XkaFDJPVGHVL8BLaThevbgeyeXA9P4ze7JR+SgJTm15KkB9DckJT6kzejBVdzkWV
	tPen57/z7CX405cnnHPgLVD1K0n3Bj3EjeTm08uU6uNEFNmpy6tcwAlZLtOO15GHQmy
	109MnKK8Ij50QXv2+QdYHKtGPziHtCmCSsOGYamo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824a797f7c-509cd783-e1e4-426b-99be-8a633ca79a68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d38b30b8901fb2834efe73f137e009d76fe3bcc9475e883cd0e6c27f9affde3
Date: Fri, 29 Jul 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659106852
