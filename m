Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE5210F1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 05:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655098079;
	h=To:Subject:From:Message-Id:Date;
	bh=TMfDvAUtay5vVLgrEFH7dMzHVVNJRj1B+3v09SB3VQA=;
	b=YxxjNbRKJGMKR/m4bOVKQV7HNfmHm2ROBR5YRN5Zb1HQaKKqadkWwotnYLZg4XfB
	Zvun4wwUp+O8fKHiZDTS0w0/VwwGWhW4fz/uvUoFysQuz7+v/lV7AuHl9fSgnwBYLkJ
	6B9Kjl3DrOz09+QsByRLlBrTrIqBkun/gRMijBnM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655098079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TMfDvAUtay5vVLgrEFH7dMzHVVNJRj1B+3v09SB3VQA=;
	b=AdacHpZbqAX3EgbO6JwQJr2qP/HsMlfoqLXIR2JqDQ/nN+cPWTgOS4n/JA5kgap+
	goTkSdVkC8OSe5Qw3XNDqIA8aQ2BeiSVLs2ZNqohOYa8OI7VUbm7+PznwgufZU6+l+d
	skqmNL02EyqWPXS9uf8pWroF+fSWKw53QUekYHaI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815b887838-ff571e32-6925-43ae-82b0-462441a9b708-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ad4844e81da462bb904787bbcda87b67583613cacb542da44779761bff6fb60
Date: Mon, 13 Jun 2022 05:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655098079
