Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3083E2F59
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 22:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657406212;
	h=To:Subject:From:Message-Id:Date;
	bh=gTjwM9JidL5RRb7WnWzbxNOKHQJ/avNoF3PQEzmntSQ=;
	b=XDEXoydgHNyCnXVNGcVIOzrpEd/+IPjocdlGCRpSI71Xe1NjBmB1ctF5UhAwxf/2
	WentR6teNFDCjRr/B0r95Erci70DD08XTUSQDcpFbZtAKt3nDa7kDuiF7FAB3WCpXpw
	0T27ZNHUd/32BRHkTJGl9tN5OFmeRw6CaxmL3HP4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657406212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gTjwM9JidL5RRb7WnWzbxNOKHQJ/avNoF3PQEzmntSQ=;
	b=YAe9Dcktl7goL3SL3CtLEy1ISx0oCyRr72OV0rjz3ERaI0Mf9MY9w6HGccm0Y/LM
	+NvOQpnzVzepfOJGEbK1B6lZ140l3D7Dp8Is5h0rgGQ3ZLceUYJFXNUhAdg2tA76Mrw
	xUn6jdZqoTwmhmLxmVHKYbnx/n2h7vap3vrp1RzU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e51bc996-5bdbdc0a-c894-4138-91f8-b365a9bfbb3e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ece28199c37cf5b651638096a7435bc1791cbe1ef0807be6a556bab2494fc0b3
Date: Sat, 9 Jul 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657406212
