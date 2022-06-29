Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C13AC7B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 02:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656469013;
	h=To:Subject:From:Message-Id:Date;
	bh=Lz5E5F1I7+cv/YNwkpBqrP821Lu+9dO35uI3MflTazQ=;
	b=HUKMKgt77UiQsQsN8g0pJBZgaQUT4UG5uXxovHPs++EIlCRv0GtQXqX+FP6kk4Z+
	/OGmDbAZNSj+DFmUeUqsTBoOrMtX+GpQ01ATE4TtLAo36rsOxd2TyhEXJHGvsC3xN8H
	Pq5x1rNJX7OnkQILIbCBC90wiWpMsG1gh8JsHMSg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656469013;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lz5E5F1I7+cv/YNwkpBqrP821Lu+9dO35uI3MflTazQ=;
	b=JKjKvSrCXwRb6GdyoR9X73vsm644N5m4yHDH6yDoqXNNbi7SqnU+xqKVY9EX/qzE
	x31zw5Q5DSANLbSL0s/H/CeUTdn86uB0rA7Dn/V8G3E7XIeliblxK4iB6Mv4NIzZkD1
	uvFN8goGNBXKi+2sOMm3EdxFdHGTVum+JPtn5BiI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ad3f3f65-8d0115e2-f35d-47b0-887f-84e1a97d44ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acee7fcac6a78c5f56b451b15ae97c3fbadc3e87e3d7098de648d9ff59e3666f
Date: Wed, 29 Jun 2022 02:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656469012
