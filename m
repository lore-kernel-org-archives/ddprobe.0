Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2CDB20E0
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 19:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658779012;
	h=To:Subject:From:Message-Id:Date;
	bh=WKFIV4RKC9nu7GqHz63DNtY21QOszekcKIT7xhOGQoA=;
	b=AoU/8KaYQYVWL7c2pZMAHox7zsGjTtNGArGz+CAHlFvZ2fYDUHgzP5Qz14ngTRa0
	R6AabtZp5eIdLX5U5r87YUKtOdugZHR/omW6CaeIni4T2n1ZXDoEm+bsiJsJ6hJqKEc
	jH5FWKDU8F4nN9ufT2OBbqhsHYQcfCu2JVZPHuCs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658779012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WKFIV4RKC9nu7GqHz63DNtY21QOszekcKIT7xhOGQoA=;
	b=Q/ld8cqeoCEaiyTRj1+AbMROoNXWRsGcGhRk220cMDKV3KxX9W3NtRWBvD6saq1c
	pb5aojlqXwWzSYSZmrU+Bd41k6ZKvHeFB0LXEO2KusUbwMN/IWzlWTWfAyq9L5hIse7
	Zu87yLJ6ftJuXp1Axir/IrsneysCKWhrEi4dyisk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018236ef0c9d-02fdbba7-cf62-4aa9-831a-1640f6b665a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e02721de0d0d874b4133bda9dda51f0cccd8bff5c12bc6535accabd24ad4e76d
Date: Mon, 25 Jul 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658779012
