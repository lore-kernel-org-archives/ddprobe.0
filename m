Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD597F6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 09:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655716619;
	h=To:Subject:From:Message-Id:Date;
	bh=exqWqplIpeY6zrkimNVzIyyC3YtiZFdXvimmy22/Lc0=;
	b=TdKBWTHLXqb1I7RzJ5e8GghyKcYKKT3eo64Jvu1GzmtAuhVHVy2W/+L088MrDb6F
	cOr1QZnc+6jmKNWqiyuvWtece/n8TEljHzqczSGw1X/bkUC6Pf6k7TuCj6u9KS0EoE0
	qy0FuXc4epRjCQ29mrv60omg8GJAk+lGH6yJ/vJc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655716619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=exqWqplIpeY6zrkimNVzIyyC3YtiZFdXvimmy22/Lc0=;
	b=djM0iXbRwY5p2c0Sqj1wLNpEQyB+5zY2mj+9O5RlQWEcl4YiPSZADCBmxjqV1ymb
	M8nX3KkE4QT/aWSqIPxLVsfP2IZ5WXddgATJbv/6i9XlOput6nKkuL5zaHs3OreIFDe
	+sxPTYOr1YTmgsvivaOcW9ax9P2Zostd+iKRKh8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818066a3b7-87328748-30f0-4a85-b94d-2e4c054aae8e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8bf07a3c46d31686221c463337842eda9d66cc257b0378bb8a235c50db27575
Date: Mon, 20 Jun 2022 09:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655716619
