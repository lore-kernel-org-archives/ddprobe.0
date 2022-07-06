Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F23705387
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 20:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657140412;
	h=To:Subject:From:Message-Id:Date;
	bh=1MPBCUF+0Um8/LDK4xQAabzaoYzU0rr40uexZsfkZu4=;
	b=FvXhKbB3CGcBfCe8mYdkj7di4hdevLXSPVw34zM7+WBNgjKU+j29kOkQDmV9Pg/c
	TuPOnbiwvAe5xWotVAjw7KCpGVKq7pVac7iIIcpY0jgaS8AYCyZCwKtwC3cSMBj7pUH
	h/Z5G+3tCaklWZzQYNaQr0AUD8Iy39BhTsxi7q84=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657140412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1MPBCUF+0Um8/LDK4xQAabzaoYzU0rr40uexZsfkZu4=;
	b=dJKy9mKahBf8MKEn8P7H+JClVi+MKfBSd7GFJ3TJb/9Ad4K1JKdhfWl1kiVndJYG
	Bd+4aDHJk1Z1q9HiQPphxnKQRL9pRQU8LiFkSl/gw8VZtaeVPw8BoJOAjjwFoxSuTv/
	/TztKBuD4zjWd0dKEDD/fgvAHajJkCV46lc9cD5w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d543ff73-652332e9-825b-4603-8e10-459f09730c0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8250092e25e49e284ed3c3bef069e71c759a130df7fee444298710932a60d2f7
Date: Wed, 6 Jul 2022 20:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657140412
