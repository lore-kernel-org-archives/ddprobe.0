Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4731915AA
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 03:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657684612;
	h=To:Subject:From:Message-Id:Date;
	bh=C/TzKbjzrVZD0SEuUKGyWzjjv5HmdbgW500sA0RZGiE=;
	b=XfLepOJKGaDNap4pG6xyCL7G6Dvo05gRhmwMG1nLViA/5t0ZMKSMcQMUiuhi7orr
	pq/xlIGtld4gVGe7/1h/KNID099tYtHoqrRyl3NDotXVBBAoqKIYSz6GnDFGq827uVP
	jLA5f/HZUg5/33T/DUmDda69tM2x04eH2SMTSxAA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657684612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C/TzKbjzrVZD0SEuUKGyWzjjv5HmdbgW500sA0RZGiE=;
	b=QvHH0EW3q/H9zIcPogWrCvYyLPwCNKK8AWRP2+91rZQuEHOXUJfWEi+hnhHekotN
	oAo3bqn22j+8lXSoY7MAb0e0hx9jP+3SOkBH5cbYHScXnwhsMPMjBxgaKTUXlcXsXPZ
	zJskObI1IwKiztejg0o0fz6ANitU1I4ZyMxJg/DY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f5b3d4d3-4053234b-a8fb-4a46-a5c1-883c50862bf9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4af63166e34b1526913c6e879c37dc82d04c4244da2b51150d4f8cb77bca804d
Date: Wed, 13 Jul 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657684612
