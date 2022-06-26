Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3412F21
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 17:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656265612;
	h=To:Subject:From:Message-Id:Date;
	bh=AhiHmb3ad1oLf/unKyJnkAcrPjFvDg353mhnSD7+8Nc=;
	b=CEpQVCzUszrM4BUdPnzgwVyh4MSnamDftbpdyJmkXVhHYbhNwEX0M4d15rtC6L3s
	KNckeP7KHF4d85qM+Wuw2u6USqVcpzR62dSZ6ATswA+9SFYpApP/1YbSdklHp6821uy
	XBX/eWThBpGUwDIkNjp9iV/97rrxmr5nYi4+x3W4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656265612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AhiHmb3ad1oLf/unKyJnkAcrPjFvDg353mhnSD7+8Nc=;
	b=LkAyZ0UGdxRGur+IV/oWQi5Cy1J0AhGUv0aFjVJPJy8IHTtRnP3uYrR+VfOUcOH1
	ypRPY29E0R7eA1lJQTuCydTHxCfxHa8XTJUz9PTw2xw7+eaWfgNRVESgaPTWjdFkB9l
	YO7VcEk06N1qwcpAnTXK7Ii5DIRr+QcRIErLdkOk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a11f9c24-2ec938c9-42a1-4ada-ac84-1d1a596c2937-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f7ffd26dbddd5f35e49c9d289bb46c56b78bea6d0194597e644bf124ba6a75b
Date: Sun, 26 Jun 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656265612
