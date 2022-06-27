Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19719173
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 00:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656288412;
	h=To:Subject:From:Message-Id:Date;
	bh=/kC0ZjpjVIyxkkXoKTLB2e1VmFI0NiLr8M1tQCzDLMY=;
	b=bZBbFi03HLrPt50QkbiY7R5U4n8dIBUibMBMaltyGs7thFQgzZVFKuAVj2gPtjze
	ZGW1lZnm5nWaK+PYfyVr2I0r+wzShBGzCYQ9sR3q4YEPdBt6tTZFLvci2hupJ/iBsxq
	OEQ+svdYmvg0EiL+Bhj+jDVwVVfecOOxuzhkuSFY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656288412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/kC0ZjpjVIyxkkXoKTLB2e1VmFI0NiLr8M1tQCzDLMY=;
	b=W4p4//AxKMF9wZmKba1bHdbBS+6LxzutVEADi0symbg2es+yUgRDE+q8kbHlJziX
	/Xc6GZsyNn1oWXoOyOnj91tFsYRQjYi21DhTt/cqKRMXFQLDrz0no9dDbQOQopUXUKi
	w+bCHUkZy27xmp+3Ac5B4Zs6OheiAc46Jmddv1pc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a27b828d-f9e07b90-13a2-4f67-b9b4-5e0d068a271c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5def7744621943eb05247425dfb41bd7bb77eae3a8518b96755971a42b0a3af3
Date: Mon, 27 Jun 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656288412
