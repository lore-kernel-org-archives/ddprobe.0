Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454E71FA1
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 10:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648117618;
	h=To:Subject:From:Message-Id:Date;
	bh=qPuTb6m2s57l5GmKZHHovSLIvilXWF1zbWqzwLioA64=;
	b=Bdo6IrHj1DCJ7+dGn7qqGg3hC9l85bHalzoUtM6udkYc0/1B3eda0r9HedpDMlGf
	yuGNUu+ApiwVMe8HkkAp8aJUykRvF6E6wPwDr4svNQE0ydP5QQJ6fmNY3HTDiaXtrg2
	h6EOgL59rr7vJ7Sg8WFZaPhuZqwfzJjWlkFFMO3g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648117618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qPuTb6m2s57l5GmKZHHovSLIvilXWF1zbWqzwLioA64=;
	b=fAr/P5C/kEYogvdJGW+EJKsHqT7hfYqi9YkIx3AOiM4adWWgjwWkbx+KsGn2HKbh
	XXTudSAxSFQwExDKXv4Hz3dkKWouUoBUzTdjX2w636nVMY5ruiwyQ+W6H4vr/yb1Dpa
	2vVkmDMhF0r0X6TCHIUYkhfawjLGrONYOTJIk2vw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbb77168a-a14552ed-f400-41e2-a991-4d1be7b0bf15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9eec9c7ec614febd8026dd5aac6692741041c4df3d1233db2b013a9a9dba0d97
Date: Thu, 24 Mar 2022 10:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648117618
