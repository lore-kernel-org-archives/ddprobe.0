Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 031367C
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 02:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648953538;
	h=To:Subject:From:Message-Id:Date;
	bh=MTryfbMPkiSkN7+Q7MqYL7WsrG2JCKeUPxCX9VDsiTI=;
	b=R6SiF5MHBRdDJmhBGtHlraYUbXHc3v0ykArSX7GNQ1cxIfoyapzN3tYLzhe7OWJq
	g0CO3hioOL6403FYxQis+zEF6n5OxnTcoZ6PtnO5f4LhCkMqwAe5fxrDyBzwAQahLFI
	2JO0VmVf9O658MHIqgFtr6ANbz6hRojA6DT7t3iM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648953538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MTryfbMPkiSkN7+Q7MqYL7WsrG2JCKeUPxCX9VDsiTI=;
	b=g0oJ14WGRjPn8irPlfERPHNUtLVX9nLSW0XYstlN0xFE6ypVtHklLA7fC3KCv8v9
	qgmEtYTO+tpWotJIGZPPyE7MhOAMpYuMBfNFjNR5njKX55BjR8qN6AfXlgYx0eJ3/FC
	MWfMgf2fGhYLtIPrkDU8VX2wJ5JBHVkn81A3Seq4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fed4a36f5-4f4f4dac-ab90-45ac-b917-0770c7e8d0f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c112b785bac0567f27571cd76e62dd5d976842798d03d32c6db1a3ea408d949a
Date: Sun, 3 Apr 2022 02:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648953538
