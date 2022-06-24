Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142327C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 18:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656095212;
	h=To:Subject:From:Message-Id:Date;
	bh=llzb3ZHA+aC3yykK/iboUgDM1oTQs5luMY20KrZgXas=;
	b=PT2hlSM5D6CP+qfji684GANN4DktYcKYqXxaN6QnRykdhKowDTkMOCHrzCIdf+eH
	CKvn/xPuH62xx5OKQPaBAWGTfj36CSI9FwodXsdWW33TQL3k7n+ESGzxyeUp626UL1j
	nvlzz4n0EWbTHmWZRMd70jyGmw++clBa+m41XlWk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656095212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=llzb3ZHA+aC3yykK/iboUgDM1oTQs5luMY20KrZgXas=;
	b=GbLsMKmvMduddl07VvL99zHrZ8HFdWk9Wiz6ai2UdK6718Wt/1+Tk/uoVz/vz8k6
	T6x58W3zWSsL2x321m3NbI+G+izlZ1wocOJnMg+FZZExS7w89belKE9V0m7q0gBAgqd
	7ANpiwP6V6DzFqTLJWfA27LfbECuUxF0S2l9tKQo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018196f78316-f35a62bd-68e8-493a-8f53-a0e1494fb624-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b394deff44cb563287c18fb5a7b613b904d4c67e72835cf18a18fb25a8e07a39
Date: Fri, 24 Jun 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656095212
