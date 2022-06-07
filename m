Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093977C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 14:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654610879;
	h=To:Subject:From:Message-Id:Date;
	bh=S4JhkOMMZjiiBfFKC0F1lij+lIoG2LGR9ZqlWSJUH+Y=;
	b=JZXg28hF++94IhRnKG/xVXFsa27Ia6+46bWLvJbqSBfcHFs8+CLB6okWv5I747wb
	wapxdRwtD+198v3pD0qBKawcGoTmAwBHOzLLUXUCjJV2b9gGnFehS9BR3PofPdb0THe
	hUsSVz1ItqiuuWp99os0QwQKgiz4RMm27nTWQ+fk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654610879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S4JhkOMMZjiiBfFKC0F1lij+lIoG2LGR9ZqlWSJUH+Y=;
	b=PA+WIxq3rpNjM9msSfXrXQ01rQ7iibVhmFdJjsbk8ssgRi1hBVxzyRm/Agz0wxtk
	V4La4Jw8nEQal4GgaXA2Q3z4vuXzMJB1cXVhHp0i4RVMxKu8GXwllmvv5tP+UdwMQWH
	on3Xi2gCxF/OW2loNNixLKo9YnYmsNGiddClt2Hc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813e7e62fe-c76c159e-006f-4de4-a54a-fad0ba1e4bc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 306fa2cfa009c7de5b529dbe00445c4566c962fb9d7c8137f7a3a03d4752ef87
Date: Tue, 7 Jun 2022 14:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654610879
