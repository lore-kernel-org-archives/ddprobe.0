Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA3E1FA5
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 15:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653663659;
	h=To:Subject:From:Message-Id:Date;
	bh=prSq5g9OE5RdDkKOa/4NeeIkEds51hKOPkIz/CjlRbo=;
	b=bNEeV4UpvxqVK/4z6CjT25qq0qOaKnT7k+02yqVkwQPCDJm/NN+/yxzd2xymzER7
	OJnkZQXyIHBi0fz4JWM6rmm7LsT/6woTdoGpfcCDTycWU3b23qZt/mMjkL3LeSgaMMk
	0K4IBQVdWPGXFbhHpjMB6DHGaPJPtL6LaB3XTiDY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653663659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=prSq5g9OE5RdDkKOa/4NeeIkEds51hKOPkIz/CjlRbo=;
	b=FE2EreXEzpdFrP32q7uvftMCQqytYXhNS9c2/+n9VFDjffmlIECJ783mSpk8gGHx
	iJ0yxbzOhDuvKkpmlqHjsnJzBS+xyMVW9XC9rZaVUKI4MEJ3b64UKjnsjVYJuALfmVM
	7ANCXkI6JqF4n6rqHJTKp0xvA3vrV/GyEuixA3YM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810608f518-15fff298-7c00-40fa-a8ad-3431d3b90164-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22d799e68e789ebda5910ebdcf58a244cc420392565f5104eeb734fd452e09e0
Date: Fri, 27 May 2022 15:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653663659
