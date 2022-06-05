Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4FC7110C
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 00:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654390199;
	h=To:Subject:From:Message-Id:Date;
	bh=PIlM2dQoFFwtOvNYhRMMy5Nlw9gheFhblmtGzrBmMm4=;
	b=QDKDYREk69YXVW0qIQZ5Z0hTj+NS9+5sfw2mPVfKKkxf8ChIZ0NspHZ/8Bslexo3
	M09ko06i3yRT4M6RFdGknGvK4n6lHJd4oTuVILfVYb0v3hnPeLlhJedW6DxeU+Y3kqC
	qc/G/8+CSKBGj81ogWT8W4afTkqj3n+tTcAb7Xxk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654390199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PIlM2dQoFFwtOvNYhRMMy5Nlw9gheFhblmtGzrBmMm4=;
	b=VaNtQI+fQ/dphwvXa7acPdxBxuw1fDeH4FNmbanMmO0WlWy4IQMHFNOZFMe2U23S
	nNf6F/J8T2sRt3QZ9meHR9zeQ6yra5MstEIJKiu2hsBJOYnyf/ktefQU5ofZ5isQQpG
	Wiu1V8o1AI8JNgNCj04rvnhWVDSn5S40NEARvUto=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181315713da-d62808bf-a2c4-49f3-b8d0-031368576a48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1582d842e2e9cd9e3fc601a2685ba41b103b857ca246f9e0b52daa364676c053
Date: Sun, 5 Jun 2022 00:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654390199
