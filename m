Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0217E7C
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 20:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650747538;
	h=To:Subject:From:Message-Id:Date;
	bh=bYZ377NRqdvD+GkjZCtT5NogoW2lD8F0i/I3aySvvKk=;
	b=NaKzhmxnMzP7nJg2ahenN71x2vPhzGZUlILNxFMvjJrz+pXCo0Ojwk1lxeVQ96fG
	xQZ1HZhyMlrGqeYNKsXrXRZC7xhfTrq4TxXq3qFRbUhqhWCRd/fdyCEsxzAJQr5D5Li
	vwdmGHp5+xJ/26JYooMICzwL81sfKTj4a+E07HRM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650747538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bYZ377NRqdvD+GkjZCtT5NogoW2lD8F0i/I3aySvvKk=;
	b=Hl/xINLUAWehzwO7jkD+9W0TxnbL/zyMGGs61NBP7wTCt9Rif1PfkCGdah/M5iDA
	nGaDH9L5BxGO5QvQFW+bM2eLRas4ov9z+nAIiLeQC+De9CzF63ar5abUmPjVHUUSejj
	YienzqAJvkwp8lQS1Z+uPTo0wtmh+5ddVW8nVTSY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018058387b41-70c78268-b046-4947-b2da-5cde9a3e4920-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b0f0a06dc4e6801c414f024ee82086dad499ed520930ef7669e2d93ae1105d1
Date: Sat, 23 Apr 2022 20:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650747537
