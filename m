Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D56687B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 19:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655666399;
	h=To:Subject:From:Message-Id:Date;
	bh=xADQXD8C7iGiguNjISjUgr8CEURAP8EiB3NLA0+90NQ=;
	b=Y+AkoidGPAtaMUv6gI0pIxHFFcI0TKm8OYhmISX9TkTJrnjXSZ69jUieaoc3fVkp
	2OBOZDrACmYp8RkaDoVhOZi4EoN8hSLG/p5CEu+RuhKn0IEy5VQQE68eRJQJYG/BKAG
	R4k4e54QBKcGhdhdH+FNZwLvuBqRf5KfqeHd5UKs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655666399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xADQXD8C7iGiguNjISjUgr8CEURAP8EiB3NLA0+90NQ=;
	b=LLoa9o5IG2v1LIr0vhtHR3pkw5qnawKFGTDxG3iN6aAzVFzLG9qmITbKTiUTpy+d
	LCykxGacO4VxlKN4skd676UHvr0TF9liMRjw3s6oxxH7AP94wJCaSNh/A04pU1mRX5Q
	MxDJkhTDQWuWgk5UTlLt/NqDiE5sE+eVnTlSBR3U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817d685809-4bd2e651-02c3-48e1-b8d0-6aede79ae804-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de042fc73fe35bc24e3ecaf16602edf0001321503e53ed361648e8c25447c459
Date: Sun, 19 Jun 2022 19:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655666398
