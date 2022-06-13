Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E57610F1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 05:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655096819;
	h=To:Subject:From:Message-Id:Date;
	bh=qVPz3WnMYjog1LsE/gUUUDVDc8VbpKnzNVAH9Y7cO/A=;
	b=F7j8VG5D14FdsrPuOmmT2CfYr+jVyaYYosSkHlIddNkZuHOytKhDEg8XTDg1x4CY
	y758cHJgtT6+FVuI5JY3PVLV7QbBG+0EricyKTolCq6kwjGR+BK4Z+bqYmAwzKJY5Mn
	AvlGjfNMZwQcO0dUTZ34crJB8PRDRxKGidJd4U7w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655096819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qVPz3WnMYjog1LsE/gUUUDVDc8VbpKnzNVAH9Y7cO/A=;
	b=UxE9z/2YIs5wQSX7ljgxL3UZnnHf0LQ+DglHzQGJdhdbSttcObgG/aSl4/YkOkCU
	KlhtpjNI5JpKauIrkd2FnU+dGHbqz938opCCIpc7HrVdVri+ICoHKwq3fPxJLjV3/gD
	B1lqSARaR+FXWlJMGKyotdjhfuPNkq+KJU5vUhsk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815b753e4f-0821af2b-ae0d-424e-bd62-37c90047f33a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e54e365615ac81aceedfedd3ecbff44d7b3166f138ce92eed03eed15371ee63e
Date: Mon, 13 Jun 2022 05:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655096819
