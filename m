Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43ACA17D3
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660158652;
	h=To:Subject:From:Message-Id:Date;
	bh=QIkRZWga/uJP4f/QcEYxWmNFQoPc59ximOOfPJ93qxg=;
	b=lHuHMiW0uLrtROEdY+RBZaYDqZBqzCHRdoiqA9+osyjaqUnEWg0tnACvPEAaP/Ly
	4mFKUvpi7TwxbNmppCIHePUJv73SkDM4DjcaDPF4XMwoNw2v6uxVjEj01/GLmjWCyJb
	REAEf+s1zN4JlnS1HFFid4CozyzNnmExg3d5fnPw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660158652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QIkRZWga/uJP4f/QcEYxWmNFQoPc59ximOOfPJ93qxg=;
	b=QmKJsfsjkdX7yjgShpRQl7eTWGuN2Ummqb9xBtZmYZuQTFhDfvVlXpbWkuhXuj3K
	/mrZ4SfPMKhQs1+/ygNldRozEAt0YenwfYgTy8CLImDbEu0x1kRhAJ+zYSu68og0yE1
	PyQLicGFUhkIyBS0hLaMWuQQA4D9N9VPY5BdqV7A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182892ab09f-496ba99f-d5f7-4b29-a0cc-4e25c03396d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 94b01cf21e5874015754e52cd5053bc1e66ef709eafe480fb6dbcdea56029786
Date: Wed, 10 Aug 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660158652
