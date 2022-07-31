Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D8215AD
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 07:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659251452;
	h=To:Subject:From:Message-Id:Date;
	bh=3PhrI+BcmYjRI9yAGObvcR2ay4zfKPZupsO2ZYbc8TA=;
	b=Sr1PS1Hey5103JEJjbaq9iK0OG0tWwUvWZ+tB9bAJQEgxR2PYEk0IR1wB9xBjmOp
	aFeK5wNEWoUVq1tG1o1admGUSJ78tl6uBR179SeLmkFdV0+Yxh7tB0I2Wt6lL8Fn4Gt
	Vk6V92DfVRnPGwDyTr4lgqIgfzzZEovTkTrSgArY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659251452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3PhrI+BcmYjRI9yAGObvcR2ay4zfKPZupsO2ZYbc8TA=;
	b=BHqCw1VJLt2lSJUUWzD8/HP4haRKL1V367fcBd1C94o7SgqQefR8rwyeDek0aCe7
	/BZcIR3gtz1I0GgVsZBE8smx9Y5mH9usQrboYhXgnY2s12/MPHYQZsxbCNrE6TBIo7A
	4yYrwjjyyLQpDf7gOOcXZPYrfEC0++U2fnxXKRcU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825317ea54-ed0d1f9f-f09f-4133-a4d5-588a654d528c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4d6334c92a601cb51bac1bb822f756259f70698a29b7b3a852595c17e883a4aa
Date: Sun, 31 Jul 2022 07:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659251452
