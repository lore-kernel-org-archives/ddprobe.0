Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD877F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659356452;
	h=To:Subject:From:Message-Id:Date;
	bh=itttFDAe9aEF52X6hVjbOm5QoGYT9rxDcFdF290prfA=;
	b=MHcIV9S1gAyZ1g6PIUIBQuug+KMwISm7MZmqTu4NXSDz85CjdJWNcJj4ovV4y3Bz
	Mx+oENEXPle5h/D+pTkw/ttfd7boj3ZeBRpJjLfLFYl2110oYZnzHLpJ6ObroChqMDp
	5X6DDPHaRBMUZwtWdj+SuYT+ZZ7OLjTHCAm3zCSg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659356452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=itttFDAe9aEF52X6hVjbOm5QoGYT9rxDcFdF290prfA=;
	b=c3MiiPL5qxXs6HDI6Fo5h+VmFa4iohRPy+sxmLe9CKbFNl60WwMXsT39Q7bWlqiW
	MWw1PaWPmlmidVkbCIGxiuiVeTq0CpTC/W6bxpR7F+gyuXJI96SbLZApk3B8w1fKXil
	nrRDfLwFV6UoPQmd/KGgNw5+ERWwXb2FpaX5QdEY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182595a16d8-fa769cd9-d1b9-43de-a8f2-f40e6c7e3ee0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75e1b64d6fc317a705b3bb051835f0ee9689ef7e8755d1e98ef397970f253f4c
Date: Mon, 1 Aug 2022 12:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659356452
