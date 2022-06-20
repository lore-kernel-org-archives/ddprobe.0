Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE96658
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 04:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655701139;
	h=To:Subject:From:Message-Id:Date;
	bh=kjDtXXpFxyqKzwRvalcAnzVUt1jEBJhvH3scSweITwU=;
	b=UtqRn5bNwGpQBHvMhicGPV1afWtELhfuIr0mOh7jlxMuEWGna6eM3VYBhm9YmSWJ
	TlFGD9wszHs6GC6vrWiZv+rb0Ge5tefOfMEnemidAMvRzF7yMwVbqgqcEdc6KCj9BBF
	pphCWN4Y9yVUns2vi/M3yJFNwCTbaiAtFHlDFOU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655701139;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kjDtXXpFxyqKzwRvalcAnzVUt1jEBJhvH3scSweITwU=;
	b=YsMZop0Oth6mbi5L1EuoT7cO5fhZHvo8yzFA3WFWQbG8oWbjrp96RbgvtW4z4+js
	Mvyam9e4QKpwz7Z+1/F6ceSFM3L5xilbbAMrEAnfvhOZY3S74zstRjpz0vFtPN7soq/
	IzKiyB9THokhtiAp3NbLYWmOdd8O0zjgmhKpmuqw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817f7a6f3e-7bb01e1a-7cfe-49d1-a129-d1609e99ea37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b3f417bd4cc061d2fd3b4f5740ea2a3b825da883226e6b2ece9e7dd32afeee1
Date: Mon, 20 Jun 2022 04:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655701139
