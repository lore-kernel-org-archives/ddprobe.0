Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A52EEA2
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 01:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647221784;
	h=To:Subject:From:Message-Id:Date;
	bh=Pa17BReJ5dxlbUvWOLmlEo3lmdLEftqF9zksCkB+2RE=;
	b=ERJo4EZ5jVGEHw5AgsxhCQ/oILG/nNhk8rBHJu1u9TeVBQUMv/OVj3R/j+sGuj7t
	/othcKIhCcJCuQ/WaBYkCUCqtx439oUfwuqaSqcKq5YE6tkAAVxKHOvBRiBsBeGY6L+
	hmudhKODkBC1e9cbXT7HdQSnV12+P4tCSsc/v9fY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647221784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pa17BReJ5dxlbUvWOLmlEo3lmdLEftqF9zksCkB+2RE=;
	b=Sah2l3u4eJnf/YYbdtrSHa+3qfWUx4JMHcy0CezARvMklEbjwiC5aOieyy061iES
	nimplq+SFwRXKbn1BRUeG9v5WREzxczmNDOiYvCt7VvKiiXoaro4d6vLT+rMhC0r7h+
	9MjrjD9NJoPAnvmW1x9nCEzfNPXCAhmeIpesUVOA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8611c0c6-5762b708-416f-47fd-9177-00437bbaeea8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cec103f3814f2f2f322b8cc61fe9bbdeaaf86a618ab238fe8ef300fe7e3e1307
Date: Mon, 14 Mar 2022 01:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647221784
