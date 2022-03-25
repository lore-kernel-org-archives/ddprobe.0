Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EED8F23CA
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 12:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648212418;
	h=To:Subject:From:Message-Id:Date;
	bh=24Hhei27RfDdGtBkrDXWA+FU4shl0mPXNx5c8SC7trk=;
	b=HgJ1OgLMB+50InGuFzt923fpKgb2joNpiT8+9vqf21ljRQxgg+H7+yf64CLNtq6D
	hTfk0oKkn34h6n+6GbKm9hHx7txAaiJarAPzGbF6w5Ku9Q9E4w1yy8amPZ4TTbj5/iq
	5BE86YfX8oavcmoBHHruWhWkwRGPmnOtI1ZcjSBc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648212418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=24Hhei27RfDdGtBkrDXWA+FU4shl0mPXNx5c8SC7trk=;
	b=RcWAcfWucRt2z/a7ebayxC/rrsziXlMLQmKMYszjBS/gIyhbKKui8a84NB7gAJCj
	AVKmXFtNXfqQGP3VMjRP0aBXHWYtbeIueGn7rM7PA5ccnmNotgTYTMhQobod4KSApBi
	vmMi3hvsU0ToBo4JhH709NUrDnXAXsFVewkOJEGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc11d9ef0-b4f7e544-9e99-40ca-8e61-474a643d94c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f399a479d476948932b4917bab3e040e77df93d2b0bbb3000b16444147cc2096
Date: Fri, 25 Mar 2022 12:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648212418
