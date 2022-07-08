Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11242812
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 22:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657319812;
	h=To:Subject:From:Message-Id:Date;
	bh=kmRQObl5cH24fFU/W6gQYqnfo+rNF0Yz64gp0tS0ulA=;
	b=XfO9lBWajgtiKjGu+kpD54X2n4E1ihoR6toSNkOmscVuepA4yg6JM0mr5NFdnpHE
	hB3mUBI/gNr6+REB8W0EjDE2uX+RaaaumDtk+HBYkCrfi2pdZ9zM5aVoxgORL6iSI36
	QrA0peHZ7bLr8cbFPG8r42ZAtOOUBLciF96FiB4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657319812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kmRQObl5cH24fFU/W6gQYqnfo+rNF0Yz64gp0tS0ulA=;
	b=e5LmlWeVGsI8S4JoNEwWT8d85iVWcmOpOpwnMw/YW9dSjVvscM4fPaiE9OdNAG5p
	O8LEciiS1Vb4A2K964Rm1Tc+ofESsmqZKvxfdI20Hc93fjwAePtQSubSgZMlLogctj/
	ZZYJHFqTIM0TLjNTKLQcmWhv2/4O2fqRRQdd5844=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dff56d23-73dabebd-8157-4c0a-858f-e4575eb8c652-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cf8b0fd8baa29a7f20fd85cab3a369d592986317044e61b2b48b3537bbfb30e
Date: Fri, 8 Jul 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657319812
