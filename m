Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CD817D3
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 14:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655477219;
	h=To:Subject:From:Message-Id:Date;
	bh=vA0m9buWA/jArKzU7hCO0YCh9elRgifAeCsETxtd3u0=;
	b=gFix5GD8nmjSaU9n7UVGEs9e+d5l3fIabbBEjK/mV3kJTp6WxSGTjBZ5Vt0brohA
	siLG+Xsm7k2bxZN0xEJsZaKJvzqX0q4/M+3e2gqgyD1jFIh/O1ymJry5T6aqLPpYa0L
	oKTQ41PlNLqPqWQdF10IL2LIi56R6EaU/6zTOhPU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655477219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vA0m9buWA/jArKzU7hCO0YCh9elRgifAeCsETxtd3u0=;
	b=IC6tnFT9hWIjtEDJNkcAJt712d+YbTbWGzR2zEU5p9CLXTdBT2VLIxPxmr3bm805
	5LFbvJfFrpvyeXP54P5qgZBSJX86dBZAmwD5OPg/7UzhQku81hNOdGtWXbr8Q9679G8
	468EdKxcVhqB3E9vE3uO5sBQm7D4nhEMNmHDwTm8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817221afb4-81b83ad9-50d0-41c1-a372-8f9fae6e0479-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8068a0d42ed32956b9ca0619ce6f30e3ca70131382b1e9be4dc6344e75d22c70
Date: Fri, 17 Jun 2022 14:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655477219
