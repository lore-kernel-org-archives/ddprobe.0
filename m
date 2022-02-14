Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CFE7C
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 12:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644841224;
	h=To:Subject:From:Message-Id:Date;
	bh=9VVt/OIBYlKFjjQXlLkEqowvj5jQzerpWQdMBLxs0nw=;
	b=FKhDbSgXvclzXP/10ZJYFmJNzn87iYc3pEDfAo6BFDa1mNv1S5QVLcAPfXAYfNc6
	+mwWX9g84O04OlccNokT/T3p4C52+e5ELoYx4I37/l+FMRAEWjxkTppwjMjO0xHM2M+
	Kze0cFc6FVr//5oT5CHDgkUr6S2MYdhLP/4K1xUE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644841224;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9VVt/OIBYlKFjjQXlLkEqowvj5jQzerpWQdMBLxs0nw=;
	b=lw1OYiHFHqKZU/Ug0HskhKWJLIsUWsBcgtBLQlHFo0pgq88u5vdl/jdw89/igYZa
	0orToe4qlr2rBcODbq+/GulWxpi2BFTH3JKilMRb1xv6r2WTumilCC0wFBTOxqxAahB
	yxYBlGwKBXTXRHU4JTRzuuWh7VdDFTH+gFgF1cF8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef82d4956-235a8fa7-8622-435c-a73c-214008a07f05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40a0d9be2c7d2ba183fd42d880b63bdecb0ec900de759f82b6ff8da482001da4
Date: Mon, 14 Feb 2022 12:20:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644841224
