Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D7A28E0
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 20:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648240978;
	h=To:Subject:From:Message-Id:Date;
	bh=N0V0uHalqCnCZm07bEfj7fJyPLWAP+UgG/4Mnml1Jkg=;
	b=gdZ8Cb/k8obmhF4+kPtDleXS7bJS5qF8JJ4wdvvhWt21tMzjckgMk5LrtQz9bURb
	VdTsILolt3lkIPnIoIcTVBFcQofscajEyKqfOlLkn8VhQOY2kGtdYmIF9A+i3lZitJB
	F8jVRrw1Z6LZ5V56gideBFDo8bAEgTXFc3yTr0rI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648240978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N0V0uHalqCnCZm07bEfj7fJyPLWAP+UgG/4Mnml1Jkg=;
	b=XhAggF4rAjiLXqRQ1Fn82UciVVn/xwyEcvUG30Zk5aOXzn+9Er3N0fEJfP/YDHNe
	MwfVzvGD9JgcNgfq+ji/z1HaXmyjcpSt+/GL6XUe9GPjfaGZMZV3+xQ3kCyyB3xyW3+
	MtUcve3g29VTayDYfdHNeAlodXloOu3cWUd+0eUE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc2d1693a-52e58ea9-6764-4915-b928-52ae11929ad3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 036576982b935857fa6d974a7377ec4d1978b5c4b1d0eaf18afb0fbe55b225c7
Date: Fri, 25 Mar 2022 20:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648240978
