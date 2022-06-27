Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27B7181
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 12:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656333412;
	h=To:Subject:From:Message-Id:Date;
	bh=Qiz7S/jC8AW4L0zwI7bxshIPe2CFW/1AjMpHJEzyM9k=;
	b=FexsiIlHigLMVMcQ20KvARzni5OT6v/y8vV/e32b2X0glBppRDkslW/TsxvlQWNw
	5f8JBbFN8lbt+g2JBJlSb/ol+I0fDtlkJ+NDv6CkP4eL9jx7LMnyaLnUReUhA5vUAKJ
	IdJqw2LcL9fUafik+4YA3DYcOeGol24KXtOh45Mw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656333412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qiz7S/jC8AW4L0zwI7bxshIPe2CFW/1AjMpHJEzyM9k=;
	b=BC6mhUI0g5hjwLbkuMvfccoKgaB6mFGqAgMui9jDYmyVs6owoFh6CPYmF3BPw54Y
	0pNHCSxOhHv4QkHnNUp/FqqSykxc09v8LNLJVlZMhs4PsBwpT61qTFvvjEuyjPvFKs8
	ttvJebOMDgVmU39gaQtiHYlELiznvsYWVS/6hMsE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a52a27df-98a8ac15-e596-442a-b16c-49febe33fef7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c93ad1d105d590019d833159fb722d663860850306c0c3eecdfd21ffee168f2e
Date: Mon, 27 Jun 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656333412
