Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB9194280
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 17:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647968485;
	h=To:Subject:From:Message-Id:Date;
	bh=YZ1jMLLQxZgPpk66WyILHHiz1Uyq4vqGvchW7USrOLs=;
	b=H6Y8wsfT/VC2ewdLlw6I0iTnbYyXh4zUquObUlfnBbbDlKlXq+oqA7VZYccIw7IG
	0w/2Ka9XM+9mkqCAAHzS+onN8KmKUTaaoa1yvXu+FWCgOd/Ce9OR9Ag4rNo0rJmJN+e
	hUionZzGudQEn63rrf2GnloU5bvi00tmWoO53Umc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647968485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YZ1jMLLQxZgPpk66WyILHHiz1Uyq4vqGvchW7USrOLs=;
	b=ID2dSOyhQFNasn5+ECZZLp+uOB7KUDgQA8VhyjrSc/yRXqepz7XcGqaiTBq9L0U8
	8UH+I7Ja40hEvalJ909PZx14KzoKPpdoF5oQl8FmmVkWhaVT9bYNoqUhlChSfDeVFUW
	rWTWXSaoRFLHhmGdgnb4JGVVGqty+RfJOFI4BUz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb2937d95-40ede6bf-b116-4f28-82db-624b3e5c9a14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: efd83f871236ebc90c1397e7b1147a61a29186abee14fc9497fa50a87f676165
Date: Tue, 22 Mar 2022 17:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647968484
