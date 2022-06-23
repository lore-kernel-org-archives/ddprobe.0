Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2881A43D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 04:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655957399;
	h=To:Subject:From:Message-Id:Date;
	bh=COlHlMfVjHKjSUdw/shJ1PCGdKxBxpqjZxKqMVJJPcw=;
	b=Ylr5finupjLvsCbdaUdOdrGk9UEXP9TPu/BIQIS/pS24J6VYMzMm5ZWcux44rx5I
	2NKhvfjkddcdB2QSqJH6SA1Ky1DcUWuSSt7+pJeBlRZLiKAYHjqxo8qof+AZziN3Fjz
	IoQ8GqIo76nePcKkTw2nnSX2nGNLX40UbfYHrXuU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655957399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=COlHlMfVjHKjSUdw/shJ1PCGdKxBxpqjZxKqMVJJPcw=;
	b=SyhkOthmsXLofTo1RqnSNngGePzoeRyPMoAIWXNyqB7hGVVDBHIbD9z3Ls4Bv05V
	HWbDvg6+dk4NvCVxARlWnwP7owHS5DUuiLRrFyRMQg0P1CHsmCCc8ePqz6qjLdMrnrl
	YdH7MRyb69wW6jrijeFfpXo8ybJF2arU5DcCCFh0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818ec0a70c-0e1bce15-e46a-4ca4-8b2f-46c023cadaf8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9eb7f951f1411af2a039d76529b069632b7149933883b67b71a36c076e2b3e74
Date: Thu, 23 Jun 2022 04:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655957399
