Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1034197
	for <ddprobe@lists.linux.dev>; Mon, 30 May 2022 04:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653885119;
	h=To:Subject:From:Message-Id:Date;
	bh=8pCJxSSRotyb95YOHv8xpCFvusQw2b3T/llDqv14JRs=;
	b=QwyZg2BuAJDY+dwkfCY5H82xFY6tDPRORgFtiWwEbKNNLG7D1qyaOMwIce/lwamK
	5gsyDjImIy0nQjIxXTNfo7wZklGIEvNHgAv+nUPIjtuvupaUNoBhPDZayPEvA2ZGxYl
	lrlU76kwwF7Q4mYsSYx+GRYxFAY/zGp+aBeBtVp8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653885119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8pCJxSSRotyb95YOHv8xpCFvusQw2b3T/llDqv14JRs=;
	b=jt6pHift7RmMz9R5E3+CPHgTlZDlHH8kRxBUf6jsDHGFugqT54urSjJOIwwlJz0+
	jx8jiJc8/X9dGScOfcRmhLztoeoaJLP0dLbfJA2o45tHw70Lh0nn0JfJwUiT1/ScIaH
	6OAWlyI8HrwNl4q8Er0E87Ue8tFUPGoRo8Crfeig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181133c2b43-5f08351b-65fc-4a66-9e70-be07632e1c59-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac8608c73d4cf6725012eea6cf789b27f514c2e234ad8a8761d12bf9b412b36f
Date: Mon, 30 May 2022 04:31:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653885119
