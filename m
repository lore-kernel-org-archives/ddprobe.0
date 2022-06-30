Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC326D19
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 22:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656628012;
	h=To:Subject:From:Message-Id:Date;
	bh=gx/nksdejErimky9AMa6S+tJaC43YQaAeQkWZK5M8D4=;
	b=ET/KMp3Iv0pLCJzzmjPTl0Ov2y4x8zkDNbwrYrV8EgAYQ8kMcboh+AB4P+HtSFmO
	zffnSEsmEIhyM3NVF46CVwtOwa1r1Tnz4ldcFbCYZDN3n98hjLcyQQ/4AWg3B50DGq9
	1ZqXLxerr53w2+ZQcvUKGFxYJjfgUHjUYrTQzmfA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656628012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gx/nksdejErimky9AMa6S+tJaC43YQaAeQkWZK5M8D4=;
	b=F0uGAQlg1jrgN/1U9ngHXxKQAVf7an8kDJGxECZ+e+ca4NOlWmxJW3gWl8QM+BKB
	dEkqvPC0Htd7IWiPFd/gevo1ywtHW95QZZWp40Ga6CqrVcT5Y/Zv+vYSxufphU/Lk9d
	cMLbStqxJIlJwnXbR68JhtfNvh3PtzIMu1smSPW8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b6b96570-dc975c66-d583-4262-a334-e25300a83faa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9b095087788678e2db0b923d4b9661973f7c179cf72df6917da1eabd9d7d55f1
Date: Thu, 30 Jun 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656628012
