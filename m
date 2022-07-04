Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 011817E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 12:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656936412;
	h=To:Subject:From:Message-Id:Date;
	bh=Sh4dotD308QClBIBqJhA8S2WSPTSHmqNl3N/DtmU0ys=;
	b=auIkxYlbcg6/CQ+4ESKSniz8kwNE1GL5ZeccMk6Xwe8TRopt8+gU+GS43R3a5MbM
	mw89wWGkxgQv9NihfkTHPMXUWrHQ2WyI341rxJHyD7wAuaLGoVlDIbRjQY7SFyaJXoW
	2qWKjLfflzeHuBJ6pw6g5lrc9XYvE/YrWVoF689Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656936412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sh4dotD308QClBIBqJhA8S2WSPTSHmqNl3N/DtmU0ys=;
	b=YRzTCLqQkUgi28l9pLbM9WiZ9FOO/V9PkhRLXRowLNdEynkZBR5O9x+HBa1TML8B
	F/uwXsWS9xxepAZonCPG8W8m7M0P+kKSJW5f9P5fJuSROCviJEIgA/hJm7sahrvtf70
	fCR0IyuurfkFnp5wib+zRzwiyUFnD5ofzZ0lM99k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c91b347c-c5adb6a1-f0c6-4528-a0c1-e9ae5300e29e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e6030175dd195f0124a4155f5a4fad31edf51760cc56a51e7c37d875e39b916
Date: Mon, 4 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656936412
