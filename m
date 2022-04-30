Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484FD7B
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 01:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651280698;
	h=To:Subject:From:Message-Id:Date;
	bh=QZVu/4IpZq8D6P5YEQVrhjFbcVJDWWcmkdHVtqNvZOg=;
	b=I7bLwIAgK9X6o9tGtqvPMnGFAXhsONsh1Y/UOQuaQz8Io1WdvliXDYGKrvOuIDnQ
	Zr8HOOgQYx2FtSO5jSabHG9jadEYLVP7PMgHZEWTbF4JtSCQgajqd+OtMW55PsieP0+
	u01ILhfirqxQdzawggqZjpyoaMTej61rhDAYXvh4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651280698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QZVu/4IpZq8D6P5YEQVrhjFbcVJDWWcmkdHVtqNvZOg=;
	b=PikGoubX1B8PahMqy13vzNQDTpkTwa4zUUmhhDLG8z9Cx1EldRf0lEbwBUHnaBe/
	ZezC0VkHl4QelUnJkizOVwnkoGSSfHzfz155eKE2zl0Js38KL+VtY/jE1p0ka91d5i2
	/G7SDf0XX2knYfqqHvkg1PygBVUmSWvTGJsqb0S8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018077ffdbc3-2e0f3188-6d73-49b9-9a9b-1cf49f1b4e97-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3949791287a61641087eb9b7a6df4c6243adecfd3f7ea714fddbf5961d8fc573
Date: Sat, 30 Apr 2022 01:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651280698
