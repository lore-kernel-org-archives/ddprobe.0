Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 651397A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659051052;
	h=To:Subject:From:Message-Id:Date;
	bh=RzjYPOJsE6+slE+s+edn++6ei1gBI8WJMgc9sLouaQU=;
	b=HYZK5+eFaomFYk2uBi7/N24kDa9B+Xl5aib82sfTtx60aoiBo8fhk/KNdQGlkmXW
	d59PRMEn8ub5kCP72B/u7FQ8Y84SH6iijcDJpGCv8WUsuINjbDKDVtbVSbOmfBeu58r
	k7cXovvivb7TXiDqJdBbCrcgfnTg/AAEy5xCmPiU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659051052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RzjYPOJsE6+slE+s+edn++6ei1gBI8WJMgc9sLouaQU=;
	b=WS7jv5f1a0xNAabSd8Oflxql1QcXfIlSIWGyp+6aFkphJVIJ7MZYbEZ2VjujgmbB
	hZFNeyhzh0MmusQW9i8DktkeqUACgEoGqf3QIW6yxjcTRTD0JNjExsbDBMHKS761T5a
	+s04TtIwVDtbSefBwT6M6YQgbErjfjoUQQ2GFM/A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018247260dfd-66ca3f41-f278-45aa-bd4a-6a976e8287c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29c6daa85bdd05c87b2603436bdb6804aee50ca1d9dee6b15610647a5d29dc5e
Date: Thu, 28 Jul 2022 23:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659051052
