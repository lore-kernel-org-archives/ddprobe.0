Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 025831378
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648023685;
	h=To:Subject:From:Message-Id:Date;
	bh=89fhHiiuXqZcqxTAGCZiDE8RuTMiZ6NtVHdNYQyd9YQ=;
	b=hRHIZNeQrkvEIwJj7C4HvCJZe42a/Ex0NcYU9ZhADaNiSKCs/01yYkht5D04zEi1
	tT/CSdSfc+lv2+2G1TcVaaWhuADJB7lZKHZU0Y6sZJ3h66H7u6wUveGptFeZnJrTHrb
	ZElRUrJDgJzN75+W8C0Js+0hvyI8b76fZ/+uFxIw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648023685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=89fhHiiuXqZcqxTAGCZiDE8RuTMiZ6NtVHdNYQyd9YQ=;
	b=fEq0Zd6TePLCiYAF5iTY9WXWGIrsQ8XWuKTImMDmpk1GUZ2Dqxac3vm4/eCtui64
	PCSG28JhwbOwg1U845Uz9lVWhAHw3HooytZ4rRu+Ly2T/A+OCIidmwnsZYrM2VgpSje
	jmb50UK9XjmC0z+u5OgjU55FTCjyXiF3Mh7wvxbM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb5ddc6b9-f720e0e8-17a8-45fb-b019-9d476e6f1013-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9f6223214838532a24cb4c0718e02d28fbaca92644b44002d22b8b509cdacbc
Date: Wed, 23 Mar 2022 08:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648023684
