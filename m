Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8074C63
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661206852;
	h=To:Subject:From:Message-Id:Date;
	bh=zt9fC/zYfkkR88X2K6NS7uPRjZ+tyQBZNNPk2oG6eYQ=;
	b=VQeQYHJHAVP8WpQSIBv7M5mnJFNglAfzBM3CLOPALuS8Tu7eEw+vTelclIfuP0EQ
	+Qxar4z2lhAfuU4HVtnaXG0nCl37eYItbAuZFyQKeabulJFptU7iQOBziXdKLE3+sOm
	C12A/QnjEALs/7ksuvoKveystdA13BnHrgVmMvf4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661206852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zt9fC/zYfkkR88X2K6NS7uPRjZ+tyQBZNNPk2oG6eYQ=;
	b=LLTNEQMiP8Be76zF9CNNeZThV2GyUgNBFokcCtqqE0OqwOmQk+wdeTl0rCzwtEXt
	G4unIc7PDOtGd4U+rwARWET8KYffm7V7MGzguyRr0KHz/tLEm+aCPDSebO75V2npLMX
	Ir6El2m/2Q6TjrRdPs8ZhOjfP+1vRowo+JG2LunU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c7a4f3f6-f2fd1cca-4b3d-4097-bce2-6f2f032b3987-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80624a5fe57ca90458f77787d5ffcaa7001ebaec84886f8813b5bdc2598c4380
Date: Mon, 22 Aug 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661206852
