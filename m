Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648957F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659465052;
	h=To:Subject:From:Message-Id:Date;
	bh=5U4PLks5E8TpZGxknkEZSYVruBKucQg9VlZSN3sIoRk=;
	b=jMR9t5Iq7iqaUVoQPIpkFWTJxWhJ/qZYiSA2XfF+UTmDI0cmzZ5vriWCD11Lvt4d
	SZ0jL+20MLwjq+CIbGJkvUtOc1otxZIwifl7cfeatzKJdSNftdiWfXd/QgZ9GefBjDH
	/yHa63jNZc9F+FQW195TizMouWc0zpdii9c9yCSw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659465052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5U4PLks5E8TpZGxknkEZSYVruBKucQg9VlZSN3sIoRk=;
	b=DgfcvSjeANdVW12PFig2tMS96q1exdm9UCDaGNcClr1w2or0r6RPHAciqWeKUv8f
	5nRnZWzXUNNTl8oAnVbh1mHXX1GdRtXgmxP5Dp4Wcie9oqFZ3m+SUZ66paHLW5mebrK
	OSGvd2dn6sQY2/a3YkA5bx3OmUgx01IePYSgyXMs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825fd331be-0a6e1566-72bc-403e-9d17-0df03d463099-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa2c5be66d52397ec492193a09d741b4c562f19788dcd41d19238974eac706e5
Date: Tue, 2 Aug 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659465052
