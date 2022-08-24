Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F9A41859
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661343652;
	h=To:Subject:From:Message-Id:Date;
	bh=KEPC8N28yRJXJxmvcyY72BJ2O4nbflXrGwCh47gbxfU=;
	b=XXtsZdXOxf3koHxXhgbjUt1WGp2AXD6cGGNRarkX1uZOW5nCjTYO907rgduQiCps
	CJLkj3XSavTXxXKWtvkJmFgSo+Ooj5hJBhoFm9qQZyrMEU/SIZ4kUhyQJ04ruv0RIdw
	kVVMk970cTsvZAvCoGNsksWqSJClY6qPCKmOPeCI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661343652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KEPC8N28yRJXJxmvcyY72BJ2O4nbflXrGwCh47gbxfU=;
	b=Kf88BA17jp6IRt1WjEOpbhdE9Oqgwn+VhDAPaVGitWyU5kK2kIC1eBR133uATBn8
	rJzbt+irp+nuUW8JzNgKEd00EYo9y1phHvt5jCFlz37y+gNn1IqjlUOTzZ6RbjR3z5w
	IGcLj7hWnkrw3W+pfk51YqWrGQRsvRNJJgNlTw5g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cfcc5ac1-f4064d84-ecd5-4669-b533-0e686b5f3102-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b658a8af87adc7a48bd2dc682d71d23d9ac8b36c6341d4c00f1c72c316fa130
Date: Wed, 24 Aug 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661343652
