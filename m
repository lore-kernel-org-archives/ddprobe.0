Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430FB2F29
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 22:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657579012;
	h=To:Subject:From:Message-Id:Date;
	bh=9hGX8zis4MLzvNmKHYbDAp0BfmVaPLNv8RnAArAEIT0=;
	b=RLXLpb8+IdrL33qFp0H2AQrPe4PRPEFzUAAnWVUX9+v8LKGVpVQ3jmuKl7YAsH9J
	8OCD0NPSu7yl+n9rTlMtMQ0hyjcLf0ADjeEEBUP61p4/+bGK8vNLfMeC56OVhkFKslA
	QXBjJqKarmrcbYOCbl6E56IX6/bzwdTQPFxrX0Ss=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657579012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9hGX8zis4MLzvNmKHYbDAp0BfmVaPLNv8RnAArAEIT0=;
	b=gqtTOmorH6ShkiqJ1OEEdlsAkm2foRGcziiWVw7vH3JaJ3WuGbRsFvekPKUwZh6q
	1AXw5+jZeUCNiGaulgXdV6tacfpSgzzPRDOthH9+cVguaQSRmBD1CbqwXMPGjmw599Q
	dMTp3Xo2SL3GDTFSRL9plNZ7stMqY9049MGFaMII=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ef68812c-0bcade74-6949-4003-9507-3dfa6a9e1ee7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13936dd2dc65aae3868957b247358c1b5b16c26131fc9ca98c5dcc92f756cb18
Date: Mon, 11 Jul 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657579012
