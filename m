Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1527F3204
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 19:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651520638;
	h=To:Subject:From:Message-Id:Date;
	bh=+wA2St+6h3X2z+6d6es2sJKX7zrnvapFjnbb4VsvUuY=;
	b=QYlYuSGUePp1YQ4Lg3x8cEijX/EKvR9/oMKkPQjdnpSZS6DLdsLPT8aLsazdWK2v
	G1T75AwOe6KRw0SFNb+RHfvuPy/jiP6B35Z4GOzMhVk8pElftC/SPawGDezf9tPXoN7
	/dI+gV8Nfz6AZaDo5aCQ8PEtQL++pTgR6q5kZwbk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651520638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+wA2St+6h3X2z+6d6es2sJKX7zrnvapFjnbb4VsvUuY=;
	b=Ezr71RngR2QlSWgLk4NoWvO7oYvtPCs6MYe+urbYtIdK0ebWX1ZtnmRnwfwKJFWd
	6w8kafIftgZumaFaLne5lIV/DG1l0q0FKPa1GRCi0m+iXm8xiz658lz5brYKVP7mp8N
	K/GpIW4PO3puxIV29Nu+u2kEwpcb7y+8mc4jmHSk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180864d0d2e-f4a40e40-d5bd-4ae1-8c66-44c52945beaa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b02ca48fee51c5294422d5aefaf063173395ac5ef5ec62a66292991523d7ee17
Date: Mon, 2 May 2022 19:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651520638
